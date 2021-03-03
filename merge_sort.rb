
def merge_sort(arr)
    
    len = arr.length
    return arr if len < 2
    arr1 = Array.new
    arr2 = Array.new
    if(len % 2 == 0) 
        arr1 = merge_sort(arr[0..(len/2)-1])
        arr2 = merge_sort(arr[len/2..len-1])
    elsif(len % 2 == 1)
        arr1 = merge_sort(arr[0..(len/2)-1])
        arr2 = merge_sort(arr[(len/2)..len-1])
    end
    
    return merge(arr1, arr2)
end

def merge(arr1, arr2)
    len1 = arr1.length
    len2 = arr2.length
    arrResult = Array.new(len1+len2)
    x = 0 #pointer arr1
    y = 0 #pointer arr2
    z = 0 #pointer arrResult
    while x < len1 && y < len2 do 
        if arr1[x] < arr2[y]
            arrResult[z] = arr1[x]
            x += 1
        else
            arrResult[z] = arr2[y]
            y += 1
        end
        z += 1
    end
    
    if x == len1 
        arrResult[(x+y)..(arrResult.length-1)] = arr2[y..(len2-1)]
    else
        arrResult[(x+y)..(arrResult.length-1)] = arr1[x..(len1-1)]
    end
    
    return arrResult
end

arr = [0, 8, 11, 25, -1, 2, 1]
puts merge_sort(arr)
