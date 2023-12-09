function julia-add
  if test -z "$argv[1]"
    echo "Please provide atlease one package."
    return 1
  end
  if ! test -f "Project.toml"
    echo "Failed to find the Project.toml file in the current directory."
    echo "Please enter the directory that contains the Project.toml file."
    return 1
  end
  for arg in $argv
    julia --project=@. -e "using Pkg; Pkg.add(\"$arg\")"
  end
end
