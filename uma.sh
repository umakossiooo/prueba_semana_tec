#!/bin/bash

# Función para mostrar la información del sistema
mostrar_informacion_sistema_a() {
    # Display system information using Windows commands available in Git Bash

    # Display system information
    echo "System Information:"
    echo "-------------------"
    uname -a

    # Display hostname
    echo "Hostname:"
    echo "---------"
    hostname

    # Display disk space
    echo "Disk Space:"
    echo "-----------"
    df -h

    # Display memory usage
    echo "Memory Usage:"
    echo "-------------"
    free -m

    # Display CPU information
    echo "CPU Information:"
    echo "----------------"
    cat /proc/cpuinfo
}

mostrar_informacion_sistema_b(){
    # Display system uptime
    echo "System Uptime:"
    echo "--------------"
    net statistics workstation | grep "Statistics since"

    # Display network interfaces
    echo "Network Interfaces:"
    echo "-------------------"
    ipconfig

    # Display disk information
    echo "Disk Information:"
    echo "-----------------"
    wmic diskdrive get Model,Size

    # Display active processes
    echo "Active Processes:"
    echo "-----------------"
    ps aux

    echo "Running Programs:"
    echo "-----------------"
    tasklist

}



# Definir funciones basadas en el argumento pasado al script
opcion=$1

funcion_opcion_a() {
    echo "Función Opción A:"
    mostrar_informacion_sistema_a
}

funcion_opcion_b() {
    echo "Función Opción B:"
    mostrar_informacion_sistema_b
}

# Ejecutar la función basada en el argumento
if [ "$opcion" == "a" ]; then
    funcion_opcion_a
elif [ "$opcion" == "b" ]; then
    funcion_opcion_b
else
    echo "Opción no válida. Debes elegir 'a' o 'b'."
fi

# Bucle para repetir la ejecución
while true; do
    echo "Ejecutando de nuevo en 10 segundos..."
    sleep 10
    if [ "$opcion" == "a" ]; then
        funcion_opcion_a
    elif [ "$opcion" == "b" ]; then
        funcion_opcion_b
    else
        echo "Opción no válida. Debes elegir 'a' o 'b'."
    fi
done


