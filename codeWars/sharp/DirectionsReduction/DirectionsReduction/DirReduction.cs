//
// DirReduction.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;
using System.Collections.Generic;
namespace DirectionsReduction
{
    public class DirReduction
    {
        public static string[] dirReduc(String[] arr)
        {
            Stack<string> result = new Stack<string>();

            for (int i = arr.Length - 1; i >= 0; i--)
            {
                if (result.Count == 0)
                {
                    result.Push(arr[i]);
                    continue;
                }

                switch (arr[i])
                {
                    case "NORTH":
                        if (result.Peek() == "SOUTH")
                        {
                            result.Pop();
                            break;
                        }
                        else
                        {
                            result.Push(arr[i]);
                            break;
                        }
                    
                    case "SOUTH":
                        if (result.Peek() == "NORTH")
                        {
                            result.Pop();
                            break;
                        }
                        else
                        {
                            result.Push(arr[i]);
                            break;
                        }

                    case "WEST":
                        if (result.Peek() == "EAST")
                        {
                            result.Pop();
                            break;
                        }
                        else
                        {
                            result.Push(arr[i]);
                            break;
                        }

                    case "EAST":
                        if (result.Peek() == "WEST")
                        {
                            result.Pop();
                            break;
                        }
                        else
                        {
                            result.Push(arr[i]);
                            break;
                        }
                }
            }
            return result.ToArray();
        }
    }
}
