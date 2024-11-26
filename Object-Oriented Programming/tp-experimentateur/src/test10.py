# -*- coding: utf-8 -*-

"""
Test module for experiences assignment

Note: Author
      [Dpt Informatique - FST - Univ. Lille](http://portail.fil.univ-lille1.fr)
      2018, january
"""

import sys
import experience
import marker
import sorting
from functools import cmp_to_key

def compare (m1,m2):
    '''
    Compares two markers

    Args:
      m1 (Marker): A marker 
      m2 (Marker): Another marker
    
    Returns:
      int: -1 if `m1 < m2`, 0 if `m1 = m2` or 1 when `m1 > m2`
    '''
    return m1.cmp(m2)

# STRATEGY 1
def negative_markers1(markers,positive):
    """
    Computes the list of negative markers from the list of markers and
    the list of positive markers.

    Args:
      markers (list of str): The list of markers 
      positive (list of str): The list of positive markers

    Returns:
      list of str: The list of negative markers
    """
    global cpt
    global negative
    negative=[]
    trouve=False
    i=0
    b=0
    while i<len(markers)-1 and trouve==False:
        for j in range(len(positive)):
          b+=1
          if compare(markers[i],positive[j])==0:
            trouve=True
        if trouve==False:
            negative.append(markers[i])
        i+=1
    cpt=b+i #Nombre d'opérations
    return negative


# STRATEGY 2
def negative_markers2(markers,positive):
    global negative
    negative = []
    # Trier `positive` grâce au module sorting, qui vous est fourni (pensez à l'importer)
    global cpt
    positive_merged=sorting.merge_sort(positive,compare)
    debut=0
    fin=len(positive_merged)-1
    trouve=False
    a=0
    i=0
    while i<len(markers)-1 and not trouve:
        while debut<=fin and not trouve:
            milieu=(debut+fin)//2
            element_milieu=positive_merged[milieu]
            if compare(element_milieu,markers[i])==0:
                trouve=True
            elif compare(element_milieu,markers[i])<0:
                debut = milieu +1
            else:
                fin=milieu-1
            a+=1
        if not trouve:
            negative.append(markers[i])
        i+=1
    cpt=a+i #Nombre d'opérations
    return negative

# STRATEGY 3

def negative_markers3(markers,positive):
    global negative
    negative=[]
    ensemble= []
    global cpt
    for i in markers:
       ensemble.append(i)
    for i in positive:
       ensemble.append(i)
    ensemble_merged=sorting.merge_sort(ensemble,compare)
    trouve=False
    i=0
    while i<len(ensemble_merged)-1 and not trouve:
        if compare(ensemble_merged[i],ensemble_merged[i+1])==0:
          trouve=True
        else:
          negative.append(ensemble_merged[i]) 
        i+=1
    cpt=i #Nombre d'opérations est i
    return negative

if __name__ == "__main__":
    p = 1
    m = [ i for i in range(1,11)] #De 1 à m=10

    assert (len(m) > 0), "The number of markers must be greater than 0"
    assert (p <= len(m)), "The number of positive markers must be less or equal to the number of markers"
    for i in m:
        p= i
        exp = experience.Experience(p,i)
        markers = exp.get_markers()
        positive = exp.get_positive_markers()

        # test stategy 1
        cpt = 0                     # D'après vous à quoi peut servir cette variable ? …
        negative_markers1(markers,positive)
        cpt1= cpt
        # test stategy 2
        cpt = 0
        negative_markers2(markers,positive)
        cpt2 = cpt
        # test stategy 3
        cpt = 0
        negative_markers3(markers,positive)
        cpt3=cpt

        with open('tp1-10.dat', 'a') as f:
            f.write(f"{i} {len(positive)-len(negative)} {cpt1} {cpt2} {cpt3}\n")
