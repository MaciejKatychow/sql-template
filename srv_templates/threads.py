from concurrent.futures import ThreadPoolExecutor, as_completed
import time

def cpu_bound_task(x):
    time.sleep(1)
    return x * x

start = time.time()
with ThreadPoolExecutor(max_workers=4) as executor:
    futures = [executor.submit(cpu_bound_task, i) for i in range(10)]
    for future in as_completed(futures):
        print(future.result())
print(time.time() - start)