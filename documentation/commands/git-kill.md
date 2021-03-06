#### NAME

git-kill - remove an obsolete feature branch


#### SYNOPSIS

```
git kill [<branch_name>]
git kill --undo
```


#### DESCRIPTION

Deletes the current branch, or `<branch_name>` if given,
from the local and remote repositories.

Does not delete perennial branches nor the main branch.



#### OPTIONS

```
<branch_name>
    The branch to remove.
    If not provided, uses the current branch.

--undo
    Undo the previous `git kill` operation.
```
