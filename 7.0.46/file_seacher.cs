using System;
using System.IO;
using System.Collections.Generic;
using System.Diagnostics;

class Program{
    
    public static void Main(){
        Console.WriteLine("Enter a string to search for: ");
        string searchString = Console.ReadLine();

        Console.WriteLine("Enter the directory path to search in: ");
        string directoryPath = Console.ReadLine();

        List<string> matchingFiles = SearchTextInFiles(directoryPath, searchString);

        if (matchingFiles.Count == 0)
        {
            Console.WriteLine("No matching files found.");
        }
        else
        {
            Console.WriteLine("Matching files:");
            foreach (var file in matchingFiles)
            {
                Console.WriteLine(file);
            }

            GenerateTraceGraph(matchingFiles);
        }
    }

    static List<string> SearchTextInFiles(string directoryPath, string searchString)
    {
        List<string> matchingFiles = new List<string>();

        if (Directory.Exists(directoryPath))
        {
            string[] files = Directory.GetFiles(directoryPath, "*.txt", SearchOption.AllDirectories);

            foreach (var file in files)
            {
                if (FileContainsText(file, searchString))
                {
                    matchingFiles.Add(file);
                }
            }
        }

        return matchingFiles;
    }

    static void GenerateTraceGraph(List<string> files)
    {
        // Create a new Graphviz process
        var dotProcess = new Process();
        dotProcess.StartInfo.FileName = "dot"; // Assuming 'dot' is in your PATH
        dotProcess.StartInfo.UseShellExecute = false;
        dotProcess.StartInfo.RedirectStandardInput = true;

        // Start the process
        dotProcess.Start();

        using (var streamWriter = dotProcess.StandardInput)
        {
            // Begin the Graphviz graph
            streamWriter.WriteLine("digraph G {");

            foreach (var file in files)
            {
                // Add a node for each file
                streamWriter.WriteLine(string.Format("\"{0}\";", file));
            }

            foreach (var file in files)
            {
                // Add edges between related files (you can define your own logic here)
                foreach (var relatedFile in files)
                {
                    if (file != relatedFile && AreRelated(file, relatedFile))
                    {
                        streamWriter.WriteLine(string.Format("\"{0}\" -> \"{1}\";", file, relatedFile));
                    }
                }
            }

            // End the Graphviz graph
            streamWriter.WriteLine("}");
        }

        dotProcess.WaitForExit();
        dotProcess.Close();
    }
}