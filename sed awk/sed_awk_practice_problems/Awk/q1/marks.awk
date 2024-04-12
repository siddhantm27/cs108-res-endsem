BEGIN{
    FS=","
    OFS="\t"
}
{
    if (NR==1)
    {
        for(i=1;i<=NF;i++)
        {
            printf $i OFS
        }
        print "Average"
    }
    else
    {   
        avg=0
        printf $1
        for(i=1;i<=NF;i++)
        {
            avg+=$i
            printf $i OFS
        }
        avg=avg/(NF-1)
        print avg
    }
}