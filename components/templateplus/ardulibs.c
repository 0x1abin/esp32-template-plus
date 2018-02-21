#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "include/ardulibs.h"

void arl_task(void *pvParameters)
{
	f_ptr_t setup = pvParameters[0];
	f_ptr_t loop = pvParameters[1];

	setup();
    for(;;) {
        micros(); //update overflow
        loop();
    }
}

TaskHandle_t arduino_entry(f_ptr_t arl)
{
    initArduino();
    return xTaskCreatePinnedToCore(arl_task, "arl_task", ARL_TASK_STACK_LEN, arl, ARL_TASK_PRIORITY,
            &arl_task_stack[0], &arl_task_tcb, ARL_RUNNING_CORE);
}
