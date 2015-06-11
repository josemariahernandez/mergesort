class Mergesort
	def merge_sort(array)
		if array.count <= 1
			return array
		end

		mitad1 = merge_sort(array.slice(0, array.count/2))
		mitad2 = merge_sort(array.slice(array.count/2, array.count-array.count/2))

		array_temp = []
		cont_temp = 0 
		cont1 = 0
		cont2 = 0

		while cont1 < mitad1.count && cont2 < mitad2.count
			if mitad1[cont1]<=mitad2[cont2]
			array_temp[cont_temp] = mitad1[cont1]
				cont_temp += 1
				cont1 += 1
			else
				array_temp[cont_temp] = mitad2[cont2]
				cont_temp += 1
				cont2 += 1
			end
		end
		
		while cont1 < mitad1.count
			array_temp[cont_temp] = mitad1[cont1]
			cont_temp += 1
			cont1 += 1
		end
		
		while cont2 < mitad2.count
			array_temp[cont_temp] = mitad2[cont2]
			cont_temp += 1
			cont2 += 1
		end

    	return array_temp
	end
end
