
�
*tensorflow/core/framework/log_memory.proto
tensorflow2tensorflow/core/framework/tensor_description.proto"@
MemoryLogStep
step_id (RstepId
handle (	Rhandle"�
MemoryLogTensorAllocation
step_id (RstepId
kernel_name (	R
kernelName5
tensor (2.tensorflow.TensorDescriptionRtensor"i
MemoryLogTensorDeallocation#
allocation_id (RallocationId%
allocator_name (	RallocatorName"�
MemoryLogTensorOutput
step_id (RstepId
kernel_name (	R
kernelName
index (Rindex5
tensor (2.tensorflow.TensorDescriptionRtensor"�
MemoryLogRawAllocation
step_id (RstepId
	operation (	R	operation
	num_bytes (RnumBytes
ptr (Rptr#
allocation_id (RallocationId%
allocator_name (	RallocatorName"�
MemoryLogRawDeallocation
step_id (RstepId
	operation (	R	operation#
allocation_id (RallocationId%
allocator_name (	RallocatorName
deferred (RdeferredB0
org.tensorflow.frameworkBLogMemoryProtosP�bproto3