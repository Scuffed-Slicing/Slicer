#include <iostream>
#include "clipper2/clipper.h"

int main(int argc, char const *argv[])
{
    Clipper2Lib::Paths64 subject, clip, solution;
    subject.push_back(Clipper2Lib::MakePath({100, 50, 10, 79, 65, 2, 65, 98, 10, 21}));
    clip.push_back(Clipper2Lib::MakePath({98, 63, 4, 68, 77, 8, 52, 100, 19, 12}));
    solution = Intersect(subject, clip, Clipper2Lib::FillRule::NonZero); 
    std::cout << solution << std::endl;
    return 0;
}
