pragma solidity ^0.4.25; 

contract Report_Card {
    string public name;
    uint public rollNo;
    uint public batch;
     uint sub1;
    uint sub2;
    uint sub3;
    uint sub4;
    uint totalMarks;
    uint passMarks;
string public status;
    

    function ReportCard(string studentName, uint studentRollNo, uint studentBatch, uint sub1_Marks, uint sub2_Marks, uint sub3_Marks, uint sub4_Marks) public{
        
        name = studentName;
        rollNo = studentRollNo;
        batch = studentBatch;
        sub1 = sub1_Marks; 
        sub2 = sub2_Marks;
        sub3 = sub3_Marks;
        sub4 = sub4_Marks;
        totalMarks = (sub1+sub2+sub3+sub4); // total marks of all the 4 subjects
        passMarks = 180;  // passing marks is 180 out of 400, each subject is of 100 marks.
        
       
        if (totalMarks >= passMarks )
        status = "Pass";
        else status = "Fail";
        
    }
    
    function getResult() public view returns (string studentName, uint studentRollNo, uint studentBatch, uint sub1_Marks, uint sub2_Marks, uint sub3_Marks, uint sub4_Marks, uint total_Marks, string Status)  {
        return(name,rollNo,batch,sub1,sub2,sub3,sub4,totalMarks,status);
    }
    
}
 

