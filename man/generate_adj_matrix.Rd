\name{generate_adj_matrix}
\alias{generate_adj_matrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{generate_adj_matrix
%%  ~~function to do ... ~~
}
\description{Generates a blank adjacency matrix from a specified string
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
generate_adj_matrix(string_data, data_separator = ",", remove_spaces = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{string_data}{The `string_data` argument is the string from which the unique values and matrix will be generated.
%%     ~~Describe \code{string_data} here~~
}
  \item{data_separator}{The `data_separator` argument is the chracter separating specified substrings in the given string. Default is `,`.
%%     ~~Describe \code{data_separator} here~~
}
  \item{remove_spaces}{The `remove_spaces` argument will remove spaces from the header values (thus disrupting the search unless all spaces are removed in the given string in next steps). This is useful for separating strings with an irregular number of spaces between the same substrings.
%%     ~~Describe \code{remove_spaces} here~~
}
}
\details{Generates an adjacency matrix from a given string. Detects unique values and generates a blank matrix with colnames and rownames of each unique value in supplied string.
Data must be provided as a character string.
%%  ~~ If necessary, more details than the description above ~~
}

\author{Tom Drake
%%  ~~who you are~~
}

\examples{
##Example
library(String2AdjMatrix)

#Start with character string to generate an adjacency matrix from
string_in = c('apples, pears, bananas', 'apples, bananas', 'apples, pears')

#Generate a new blank matrix
blank_matrix = generate_adj_matrix(string_in)

#Now fill the matrix
string_2_matrix(blank_matrix, string_in)
}
