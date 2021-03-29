#!/usr/bin/env python
import math

# Exceute by: python3 SimpleProgram.py 
print("***** Calculemos el Perimetro de una circunferencia! *****")
radio = input("Ingrese en el radio de la circunferencia:")
perimetro = (float(radio)**2 * math.pi) 
print("El perimetro de dicha circunferencia es de:  %s" % str(perimetro) + "mts")