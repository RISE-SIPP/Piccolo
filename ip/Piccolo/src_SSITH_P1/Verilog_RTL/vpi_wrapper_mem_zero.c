/*
 * Generated by Bluespec Compiler, version 2021.07-14-g5f987061 (build 5f987061)
 * 
 * On Tue Nov 16 19:49:27 GMT 2021
 * 
 * To automatically register this VPI wrapper with a Verilog simulator use:
 *     #include "vpi_wrapper_mem_zero.h"
 *     void (*vlog_startup_routines[])() = { mem_zero_vpi_register, 0u };
 */
#include <stdlib.h>
#include <vpi_user.h>
#include "bdpi.h"

/* the type of the wrapped function */
void mem_zero(unsigned long long );

/* VPI wrapper function */
PLI_INT32 mem_zero_calltf(PLI_BYTE8 *user_data)
{
  vpiHandle hCall;
  unsigned long long arg_1;
  vpiHandle *handle_array;
  
  /* retrieve handle array */
  hCall = vpi_handle(vpiSysTfCall, 0);
  handle_array = vpi_get_userdata(hCall);
  if (handle_array == NULL)
  {
    vpiHandle hArgList;
    hArgList = vpi_iterate(vpiArgument, hCall);
    handle_array = malloc(sizeof(vpiHandle) * 1u);
    handle_array[0u] = vpi_scan(hArgList);
    vpi_put_userdata(hCall, handle_array);
    vpi_free_object(hArgList);
  }
  
  /* copy in argument values */
  get_vpi_arg(handle_array[0u], &arg_1, DIRECT);
  
  /* call the imported C function */
  mem_zero(arg_1);
  
  /* free argument storage */
  free_vpi_args();
  vpi_free_object(hCall);
  
  return 0;
}

/* VPI wrapper registration function */
void mem_zero_vpi_register()
{
  s_vpi_systf_data tf_data;
  
  /* Fill in registration data */
  tf_data.type = vpiSysTask;
  tf_data.tfname = "$imported_mem_zero";
  tf_data.calltf = mem_zero_calltf;
  tf_data.compiletf = 0u;
  tf_data.sizetf = 0u;
  tf_data.user_data = "$imported_mem_zero";
  
  /* Register the function with VPI */
  vpi_register_systf(&tf_data);
}
