function showdata(handles)
load potential.dat
load WaveFunctionData.dat
table=handles.uiDataTable;
table.ColumnName={'x','potential','wave n=0','wave n=1','wave n=2','wave n=3','wave n=4','wave n=5','wave n=6','wave n=7','wave n=8','wave n=9'};
[p1,p2]=size(potential);
[w1,w2]=size(WaveFunctionData);
for i=1:(p2+w2)
    if i<=2
        PoW(:,i)=potential(:,i);
    else
        PoW(:,i)=WaveFunctionData(:,i-2);
    end
end
table.Data=PoW;
end