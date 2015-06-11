#
class Mergesort
  def merge_sort(array)
    return array if array.count <= 1

    mitad_array = array.count / 2
    mitad1 = merge_sort(array.slice(0, mitad_array))
    mitad2 = merge_sort(array.slice(mitad_array, array.count - mitad_array))
    array_temp = []
    cont_temp = 0
    cont1 = 0
    cont2 = 0

    while cont1 < mitad1.count && cont2 < mitad2.count
      if mitad1[cont1] <= mitad2[cont2]
        array_temp[cont_temp] = mitad1[cont1]
        cont_temp += 1
        cont1 += 1
      else
        array_temp[cont_temp] = mitad2[cont2]
        cont_temp += 1
        cont2 += 1
      end
    end

    if cont1 < mitad1.count
      array_temp = rellenar_array(array_temp, cont_temp, mitad1, cont1)
    elsif cont2 < mitad2.count
      array_temp = rellenar_array(array_temp, cont_temp, mitad2, cont2)
    end

    array_temp
  end

  def rellenar_array(array_final, cont_final, array, cont)
    while cont < array.count
      array_final[cont_final] = array[cont]
      cont_final += 1
      cont += 1
    end
    array_final
  end
end
