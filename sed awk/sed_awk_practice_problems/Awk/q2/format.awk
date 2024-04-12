BEGIN{
    FS=" "
    OFS=";"
    
}
{   
    valid=1
    arr_count=0
    $1=$1
    if (NR==1)
    {
       print $0 OFS "Comments"
    }
    else if (NR==2)
    {
        for(i=2;i<=NF;i++)
        {
            ext[arr_count]=$i
            arr_count+=1
        }
        print $0 OFS "-"
    }
    else
    {
        for(i=2;i<=NF;i++)
        {   
            check = "^.+\\"ext[i-2]"$"
            if (!match($i,check))
            {   
                valid=0
                print $0 OFS "Wrong Submission Format"
                break
            }
        }
        if (valid)
        {
            print $0 OFS "Correct Submission Format"
        }
    }
}