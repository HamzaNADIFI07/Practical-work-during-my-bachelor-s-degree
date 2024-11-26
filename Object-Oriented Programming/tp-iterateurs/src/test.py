# -*- coding: utf-8 -*-

from listiterator import List, NoSuchElementException
import time

def print_with_iterator (l):
    """
    Print elements of a list using an iterator.

    Args:
      l (List): The list to be printed
    """
    liste_iterator=l.get_listiterator()
    while liste_iterator.hasNext():
        print(liste_iterator.next())
      
    

def print_with_iterator_reverse (l):
    """
    Print elements of a list using an iterator in reverse order.
    
    Args:
      l (List): The list to be printed
    """
    liste_iterator = l.get_listiterator()
    while liste_iterator.hasNext():
        liste_iterator.next()
    while liste_iterator.hasPrevious():
        print(liste_iterator.previous())

def print_with_iterator_reverse_bis (l):
    """
    Print elements of a list using an iterator in reverse order.
    
    Args:
      l (List): The list to be printed
    """
    liste_iterator = l.get_listiterator(end=True)
    while liste_iterator.hasPrevious():
        print(liste_iterator.previous())

def ordered_insert (l, value):
    """
    Add `value` to list `l` such that `l` is kept ordered.
    
    Args:
      l (List): An ordered list.
      value (same as elements of `l`): The value to be inserted.
    """
    liste_iterator=l.get_listiterator()
    trouve=False
    while (liste_iterator.hasNext() and (not trouve)):
        if liste_iterator.nextCell.value>value:
            trouve=True
        else:
            liste_iterator.next()
    liste_iterator.add(value)


def get (l, i):
    """
    Get the i-th element of `l`.
    With i=0, we get the head of the list

    Args:
      l (List): A list.

    Returns:
      the i-th element    

    Raises:
      NoSuchElementException: if `i` is out of bounds.
    """
    liste_iterator = l.get_listiterator()
        
        # Parcourez la liste avec l'itérateur
    if i==0:
      return liste_iterator.list.head
    j = 0
    while liste_iterator.hasNext():
        element = liste_iterator.next()
        if j == i:
            return element
        j += 1
    raise NoSuchElementException("Index out of bounds")

if __name__ == "__main__":
    l = List()
    for i in reversed(range(1,5)):
        l.cons(i)
        
    l.print();

    # test 0 : impression renversee
    l.print(reverse=True)

    # test 1 : impression avec iterateurs
#    print ('--- test 1 ---')
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
#
#    # test 2 : verification des exceptions
#    print ('--- test 2 ---')
#    try:
#        it = l.get_listiterator()
#        while True:
#            it.next()
#    except NoSuchElementException:
#        print("Exception levee avec next")
#    try:
#        it = l.get_listiterator()
#        while True:
#            it.previous()
#    except NoSuchElementException:
#        print("Exception levee avec previous")
#        
##    
#    # test 3 : insertion avant le 3eme element
#    print ('--- test 3 ---')
#    it = l.get_listiterator()
#    print(it.next())
#    print(it.next())
#    it.add(23)
#    assert(it.previous() == 23)
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
##
#    # test 4 : insertion apres le dernier element
#    print ('--- test 4 ---')
#    it = l.get_listiterator ()
#    while (it.hasNext()):
#        it.next()
#    it.add(45)
#    assert(it.previous() == 45)
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
##
#    # test 5 : insertion avant le premier element
#    print ('--- test 5 ---')
#    it = l.get_listiterator ()
#    it.add(0)
#    assert(it.previous() == 0)
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
# #
#    # test 6 : insertion avant le dernier element avec l'iterateur placé en fin
#    print ('--- test 6 ---')
#    it = l.get_listiterator (True)
#    it.previous()
#    it.add(445)
#    assert(it.previous() == 445)
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
##
#    # test 7 : affichage à l'envers avec l'itérateur placé en fin
#    print ('--- test 7 ---')
#    print_with_iterator_reverse_bis(l)
#    
#    # test 8 : ajout après le dernier élément
#    print ('--- test 8 ---')
#    it = l.get_listiterator (True)
#    it.add(5)
#    assert(it.previous() == 5)
#    print_with_iterator(l)
#    print_with_iterator_reverse(l)
##        
#    # test 9 : inserer trié, à vous d'écrire ce test
    print ('--- test 9 ---')
    liste_test9 = List()
    for i in reversed(range(1,5)):
        liste_test9.cons(i)
    liste_iterator = liste_test9.get_listiterator ()
    ordered_insert (liste_test9, 5)
    assert(liste_iterator.list.tail.value == 5)
    ordered_insert (liste_test9, 0)
    assert(liste_iterator.list.head.value == 0)
    print_with_iterator(liste_test9)
    print_with_iterator_reverse(liste_test9)
#
#    # test 10 : suppression en tete
    print ('--- test 10 ---')
    liste_iterator = l.get_listiterator ()
    liste_iterator.next()
    newHead=liste_iterator.nextCell
    liste_iterator.remove()
    assert(liste_iterator.list.head == newHead)
    print_with_iterator(l)
    print_with_iterator_reverse(l)
#
#    # test 11 : suppression en queue
    print ('--- test 11 ---')
    liste_iterator = l.get_listiterator (True)
    newTail=liste_iterator.prevCell.prev
    liste_iterator.remove()
    assert(liste_iterator.list.tail == newTail)
    print_with_iterator(l)
    print_with_iterator_reverse(l)
#
#     #test 12 : (non-)efficacite de get
    print ('--- test 12 ---')
    with open('tp3_test12.dat', 'w') as f:
        for i in range (1,11):
            length = 100*i
            ll = List()
            for j in range(1,length):
                ll.cons(j)
            # terminer l'ecriture
                debut1 = time.process_time()
                element = ll.get(length)
                fin1 = time.process_time()
                duree1 = fin1 - debut1                
                
                liste_iterator = ll.get_listiterator()  
                debut2 = time.process_time()

                while liste_iterator.hasNext():  
                    if liste_iterator.next()==liste_iterator.list.tail:
                      break 
                fin2 = time.process_time()
                duree2 = fin2 - debut2
                f.write(f"{j}\t{duree1}\t{duree2}\n")