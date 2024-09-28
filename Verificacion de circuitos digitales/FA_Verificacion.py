import itertools
import pyperclip  # Necesitas instalar la librería pyperclip para copiar al portapapeles

def generar_combinaciones(num_bytes):
    combinaciones = []
    valores = [f"{num_bytes}'h{i:X}" for i in range(2**num_bytes)]  # Generar los valores hexadecimales

    # Crear todas las combinaciones de A y B
    for A, B in itertools.product(valores, repeat=2):
        combinaciones.append(f"A = {A}; B = {B}; #100;")

    # Unir las combinaciones en una sola string
    resultado = '\n'.join(combinaciones)
    
    # Imprimir en la terminal
    print(resultado)
    
    # Copiar al portapapeles
    pyperclip.copy(resultado)
    print("\nEl resultado ha sido copiado al portapapeles.")

if __name__ == "__main__":
    # Pedir al usuario el número de bytes
    num_bytes = int(input("Ingresa el número de bytes: "))
    generar_combinaciones(num_bytes)
