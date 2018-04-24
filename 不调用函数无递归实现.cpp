#include <iostream>
using namespace std;

const float MAX = 3.40282e+038;



void segmentedBitonicSort(float* data, int* seg_id, int* seg_start, int
n, int m)
{
    for(int seg_i=0;seg_i<m;seg_i++)
    {
        int left = seg_start[seg_i];
        int right = seg_start[seg_i+1];

        int len = right - left;
        int full;
        for(full=1;full<len;full = full<<1){}
        cout<<"full = "<<full<<endl;
        float *seg = new float[full];
        if(full>len)
        {
            for(int j=len;j<full;j++)
            {
                seg[j] = MAX;
            }
        }
        for(int index=left,j = 0;index<right;index++,j++)
        {
            seg[j] = data[index];
        }
        /****************** �������bitonic_sort ********************/
        int N = full;
        cout<<"N = "<<N<<endl;
        int i, j, k;
        float temp;

        for (k = 2;k <= N;k = 2 * k)
        {
            for (j = k >> 1;j>0; j = j >> 1)
            {
                for (i = 0;i<N;i++)
                {
                    int ixj = i^j;

                    if ((ixj)>i)
                    {
                        if ((i&k) == 0 && seg[i] > seg[ixj]) {
                            temp = seg[i];
                            seg[i] = seg[ixj];
                            seg[ixj] = temp;
                        }

                        if ((i&k) != 0 && seg[i] < seg[ixj]) {
                            temp = seg[i];
                            seg[i] = seg[ixj];
                            seg[ixj] = temp;
                        }

                    }
                }
            }
        }
        /*******************************�������*******************************/
        //bitonic_sort(seg,i);

        for(int p=0;p<i;p++)
        {
            cout<<seg[p]<<" ";
        }
        cout<<endl;
        for(int counter=0;counter<len;counter++)
        {
            data[left+counter] = seg[counter];
        }
    }

}

int main()
{

    float data[11]={0.8, 0.2, 0.4, 0.6, 0.5,20,20,8,6,-0.5,4};
    int seg_id[11]={0,   0,   1,   1,  1,2,2,2,2,2,2};
    int seg_start[4]={0,2,5,11};
    int n=11;
    int m=3;

    segmentedBitonicSort(data,seg_id,seg_start,n,m);
    for(int i=0;i<11;i++)
    {
        cout<<data[i]<<" ";
    }
    cout<<endl;
}
