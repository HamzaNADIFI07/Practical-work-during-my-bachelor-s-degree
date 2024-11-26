# -*- coding: utf-8 -*-

"""
Test module for quicksort assignment

Note: Author
      [Dpt Informatique - FST - Univ. Lille](http://portail.fil.univ-lille1.fr)
      2018, january
"""

import sorting
import generate
import copy
from element import Element

global cpt

def cmp(a,b):
    """
    A comparison function

    Args:
      a (Element): First element    
      b (Element): Second element
    
    Returns:
      int: 0 if a == b, 1 if a > b, -1 if a < b

    Examples:
      >>> from element import Element
      >>> cpt = 0
      >>> cmp(Element(10),Element(5))
      1
      >>> cmp(Element(5),Element(5))
      0
      >>> cmp(Element(5),Element(10))
      -1
    """
    global cpt
    cpt = cpt + 1
    return Element.cmp(a,b)
  
def random_100():
    """ 
    A function that calculates the result of 100 sorting 
    """
    with open('test1.dat', 'w') as sort:
        somme_random = 0
        somme_naive = 0
        for i in range(1, 101):
            t1 = generate.random_array(i)
            global cpt
            cpt = 0
            sorting.quicksort(t1, cmp, sorting.random_pivot)
            somme_random += cpt
            t2 = generate.random_array(i)
            cpt = 0
            sorting.quicksort(t2, cmp, sorting.naive_pivot)
            somme_naive += cpt
            sort.write('{:d} {:d} {:d}\n'.format(i, somme_naive, somme_random))
        sort.write('moyenne:\npivot aléat.= {:f} comp\npivot naive= {:f} comp'.format(somme_random/100, somme_naive/100))

def increasing_100():
    """ 
    A function that calculates the result of 100 sorting 
    """
    with open('increasing_100.dat', 'w') as sort:
        somme_random = 0
        somme_naive = 0
        for i in range(1, 101):
            t1 = generate.increasing_array(i)
            global cpt
            cpt = 0
            sorting.quicksort(t1, cmp, sorting.random_pivot)
            somme_random += cpt
            t2 = generate.increasing_array(i)
            cpt = 0
            sorting.quicksort(t2, cmp, sorting.naive_pivot)
            somme_naive += cpt
            sort.write('{:d} {:d} {:d}\n'.format(i, somme_naive, somme_random))
        sort.write('moyenne:\npivot aléat.= {:f} comp\npivot naive= {:f} comp'.format(somme_naive/100, somme_random/100))

def optimal_100():
    with open('optimal_100.dat', 'w') as sort:
        somme_random = 0
        somme_naive = 0
        somme_opt = 0
        for i in range(1, 101):
            t1 = generate.random_array(i)
            global cpt
            cpt = 0
            sorting.quicksort(t1, cmp, sorting.random_pivot)
            somme_random += cpt
            t2 = generate.random_array(i)
            cpt = 0
            sorting.quicksort(t2, cmp, sorting.naive_pivot)
            somme_naive += cpt
            cpt=0
            t3 = generate.random_array(i)
            sorting.quicksort(t3, cmp, sorting.optimal_pivot)
            somme_opt+=cpt
            sort.write('{:d} {:d} {:d} {:d}\n'.format(i, somme_naive, somme_random, somme_opt))
        sort.write('moyenne:\npremier pivot= {:f} comp\npivot aléatoire= {:f} comp\npivot optimal= {:f} comp\n'.format(somme_naive/100,somme_random/100,somme_opt/100))

if __name__ == "__main__":

    cpt = 0

    import doctest
    doctest.testmod()

    t = generate.random_array(30)
    tt = sorting.merge_sort(t, cmp)
    print(tt)
    if generate.is_sorted(tt):
        print("Yes !!") 
        print("Nombre de comparaison du tri fusion: ", cpt)
    else:
        raise Exception("Array has not been correctly sorted by merge sort")

    t2 = copy.deepcopy(t)
    
    sorting.quicksort(t2, cmp, sorting.naive_pivot)
    if generate.is_sorted (t2):
        print("Yes !!") 
        print("Nombre de comparaison du tri rapide: ", cpt)
    else:
        raise Exception("Array has not been correctly sorted by quicksort")

      
    

    random_100()
    increasing_100()
    optimal_100()
