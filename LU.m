a = input("insert a matrix");
U=a;

[m,n] = size(a);
x = zeros(1,m);

b = 1;

for i=1:m
    for j=i+1:m
        if (U(i,i)==0)
            temp = U(i,:);
            U(i,:) = U(j,:);
            U(j,:) = temp;
        end
    end
    
    for j=i+1:m
        x(b)= (U(j,i)/U(i,i));
        U(j,:) = (U(j,i)/U(i,i))*(-U(i,:))+U(j,:); 
        b = b+1;
    end   
end

L=eye(m);

v=1;

for i = 2:m
    for j=1:i-1
        L(i,j)=x(v);
        v = v+1;
    end 
end


L
U