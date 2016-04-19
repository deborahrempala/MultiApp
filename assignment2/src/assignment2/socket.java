package assignment2;




import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;
import java.util.*;
public class socket
	{
	static ServerSocket MyService;
	  
	public static void main(String[] args)
		{
		Socket clientSocket = null;
		String line;
		BufferedReader in = null;
		PrintWriter out = null;
                 HashMap users = new HashMap();
                 HashMap files = new HashMap();
            
            
                String userin ;
                String filein ;
                 
               
		 try{
                 // reads in file textfile
              Scanner input = new Scanner(new FileReader("users.txt"));
            
             
            
        // puts into the hashmap
            while (input.hasNextLine())
                    {
                       String data = input.nextLine();
                       
                       // grab the two datas
                         String[] temp = data.split(" ");
                         String user = temp[0];
                         String permission1 = temp[1];                      
                         users.put(user,permission1);
                         //System.out.println(users);
                         //System.out.println(temp[1]);
             
                    }
                input.close();
                 }
                 catch (IOException e)
		{
			System.err.println ("Unable to locate file");
			System.exit(-1);
		}
                 
                 // reads in user file 
                 try{
                  Scanner input2 = new Scanner(new FileReader("files.txt"));
                   
        // puts into the array list 
            while (input2.hasNextLine())
                    {
                        String  data2 = input2.nextLine();
                        String[] temp2 = data2.split("\\s+");
                        String filename = temp2[0];
                        String permission2 = temp2[1];
                        // put into a hashmap
                      files.put(filename,permission2);
                    
             
                    }
                input2.close();
                 }
                 catch (IOException e)
		{
			System.err.println ("Unable to locate file");
			System.exit(-1);
		}
                 
		try
			{
			MyService = new ServerSocket(19000);
			} catch (IOException e)
			{
			System.out.println(e);
			}
		
		
		
		while (true)
                {
                    try
			{
			clientSocket = MyService.accept();
			} 
                catch (IOException e)
			{
			System.out.println(e);
			}
		
		try
			{
			in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
			out = new PrintWriter(clientSocket.getOutputStream(), true);
			} catch (IOException e)
			{
			System.out.println("Read failed");
			System.exit(-1);
			}
			try {
				
				//line = in.readLine();
				// Send data back to client
                                
                                out.println("Username: ");
                                userin = in.readLine();
                                 if(!users.containsKey(userin))
                                {
                                     out.println("User not found");
                                     clientSocket.close();
                                    
                                }
                                 else{
				int userpermission = Integer.parseInt((String) users.get(userin));

                                
                                      // do something
                                     out.println("File Name:");
                                    filein = in.readLine();
                                   
                                    if(!files.containsKey(filein))
                                    {
                                        out.println("file not found");
                                        clientSocket.close();
                                         
                                    }
                                    else{
                                         int filepermission = Integer.parseInt((String) files.get(filein));
                                     if(userpermission < filepermission)
                                     {
                                         out.println("Access Denided");
                                         clientSocket.close();
                                     }
                                   
                                     else
                                     {
                                          FileReader fileInput = new FileReader(filein);
                                            BufferedReader buffer = new
                                                BufferedReader(fileInput);
                                            boolean eof = false;
                                            while(!eof){
                                                   String data3 = buffer.readLine();
                                                if (data3 == null)
                                                eof = true;
                                                else {// Send data back to client
                                                    out.println(data3);
                                                     }
                                         }
                                 
                                        
                                     }
                                    }
                               
                                    
                      
                             
                                }
                                   
                               
                        }  
                        
			 catch (IOException e)
				{
				System.out.println("Read failed");
				System.exit(-1);
				}
			       
                              try{
                                  
                                  out.close();
                                  in.close();
                                  clientSocket.close();
                              
                              }
                                catch (IOException e)
				{
				System.out.println("Read failed");
				System.exit(-1);
				}
		}
        
                }
}

                 
