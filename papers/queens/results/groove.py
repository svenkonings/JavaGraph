grammar = "../n-queens-count"
log_dir = "."
generator = "../../groove-spin/groove/bin/Generator.jar"

def generate(N):
    start_graph = "start-"+N
    call = list(javacall)
    call.extend(["-jar", generator])
    call.extend(["-l", log_dir])
    call.append(grammar)
    call.append(start_graph)
    print("Calling " + " ".join(call))
    import subprocess
    subprocess.call(call)

javacall = ["java", "-mx8G", "-XX:SoftRefLRUPolicyMSPerMB=100"]

from sys import argv
generate(argv[1])
