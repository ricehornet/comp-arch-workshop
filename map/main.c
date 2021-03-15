// raises a^x
const int my_exp(const int a, const int x)
{
    int product = 1;
    for (int i = 0; i < x; i++)
    {
        product = product * a;
    }
    return product;
}

static int my_a = 10;
static int my_x = 3;

// contrived example, returns 10^3 = 1000
int main(void)
{
    return my_exp(my_a, my_x);
}
