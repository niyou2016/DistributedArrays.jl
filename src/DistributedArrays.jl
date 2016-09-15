__precompile__()

module DistributedArrays

using Primes
using Primes: factor

importall Base
import Base.Callable
import Base.BLAS: axpy!

export (.+), (.-), (.*), (./), (.%), (.<<), (.>>), div, mod, rem, (&), (|), ($)
export DArray, SubDArray, SubOrDArray, @DArray
export close, darray_closeall, dfill, distribute, dones, drand, drandn, dzeros, localindexes,
       localpart, map_localparts, ppeval, samedist

include("core.jl")
include("serialize.jl")
include("mapreduce.jl")
include("linalg.jl")
include("sort.jl")

end # module
