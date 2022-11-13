function new-julia-env
    if test -z $argv[1]
        echo "Please specify environment name!";
        return;
    end;

    set EnvName $argv[1]
    set DefaultDir (pwd)

    if test -z $argv[2]
        echo "Creating new Julia Env in a new directory: '$DefaultDir/$EnvName'";
    else
      switch $argv[2]
        case .
          echo "Creating new Julia Env in current directory: '$DefaultDir'";
        case '*'
          echo "Creating new Julia Env in a new: '$DefaultDir/$argv[2]'";
        end
    end

    julia -e "using Pkg; Pkg.generate(\"$EnvName\")"

    if test -z $argv[2]
        return;
    end
    switch $argv[2]
      case .
        mv $argv[1]/* .;
        rm -rf $argv[1];
      case '*'
        mkdir $argv[2];
        mv $argv[1]/* $argv[2]
        rm -rf $argv[1]
    end

end;
