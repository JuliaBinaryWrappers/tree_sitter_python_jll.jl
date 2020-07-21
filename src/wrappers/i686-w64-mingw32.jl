# Autogenerated wrapper script for tree_sitter_python_jll for i686-w64-mingw32
export libtreesitter_python

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libtreesitter_python`
const libtreesitter_python_splitpath = ["bin", "libtreesitter_python.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_python_path = ""

# libtreesitter_python-specific global declaration
# This will be filled out by __init__()
libtreesitter_python_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_python = "libtreesitter_python.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_python")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_python_path = normpath(joinpath(artifact_dir, libtreesitter_python_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_python_handle = dlopen(libtreesitter_python_path)
    push!(LIBPATH_list, dirname(libtreesitter_python_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

