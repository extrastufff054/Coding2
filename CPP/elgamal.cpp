#include<iostream>
#include<cmath>
#include<ctime>
#include<cstdlib>

using namespace std;

//Function to check if a number is prime or not
bool isPrime(int num)
{
    if(num<=1)
        return false;
    for(int i=2; i<=sqrt(num);i++)
    {
        if(num%i==0)
            return false;
    }
    return true;
}

//Function to generate a random prime number between a and b
int randomPrime(int a, int b)
{
    int num=rand() % (b-a +1) +a;
    while(!isPrime(num))
    {
        num=rand() % (b-a +1) +a;
    }
    return num;
}

//Function to compute a^b mod m
int power(int a, int b, int m)
{
    int result=1;
    while(b>0)
    {
        if(b%2==1)
            result=(result*a)%m;
        a=(a*a)%m;
        b=b/2;
    }
    return result;
}

//Function to compute the modular inverse of a mod m
int modInverse(int a, int m)
{
    int m0 =m,t,q;
    int x0= 0, x1=1;

    if(m==1)
    {
        return 0;
    }

    while(a>1)
    {
        q=a/m;
        t=m;
        m=a%m, a=t;
        t=x0;
        x0=x1-q*x0;
        x1=t;
    }

    if(x1<0)
        x1+=m0;

    return x1;
}

//Function to encrypt a message using Elgamal encryption
void elgamalEncrypt(int message, int p, int g, int A)
{
    int k=rand() % (p-2) +1; //Choose a random k between 1 and p-2
    int B=power(g,k,p); //compute B=g^k modp
    int C = message *power(A,k,p) %p; //compute C= m*A^kmodp
    cout<<"Encyrpted message :( "<<B<<","<<C<<")"<<endl;
}

// Function to decrypt a message using ElGamal encryption
void elgamalDecrypt(int B, int C, int a, int p) {
    int A = power(B, a, p); // compute A = B^a mod p
    int m = C * modInverse(A, p) % p; // compute m = C * A^-a mod p
    cout << "Decrypted message: " << m << endl;
}

int main() {
    srand(time(NULL)); // seed the random number generator with the current time
    int p = randomPrime(100, 1000); // choose a random prime number between 100 and 1000
    int g = 2; // choose a primitive root of p
    int a = rand() % (p - 2) + 1; // choose a random integer a between 1 and p-2
    int A = power(g, a, p); // compute A = g^a mod p
    cout << "p = " << p << endl;
    cout << "g = " << g << endl;
    cout << "a = " << a << endl;
    cout << "A = " << A << endl;

    int message;
    cout << "Enter the message to be encrypted: ";
    cin >> message;

    elgamalEncrypt(message, p, g, A);

    int B, C;
    cout << "Enter the encrypted message (B, C): ";
    cin >> B >> C;

    elgamalDecrypt(B, C, a, p);

    return 0;
}


/*
This program first includes the necessary libraries, which are `iostream`, `cmath`, `ctime`, and `cstdlib`. It then defines four functions: `isPrime`, `randomPrime`, `power`, and `modInverse`.

The `isPrime` function checks if a given number is prime or not using a simple primality test that iterates over all numbers from 2 to the square root of the number.

The `randomPrime` function generates a random prime number between a given range. It first generates a random number between `a` and `b`, and then iteratively checks if the number is prime using the `isPrime` function.

The `power` function computes `a^b mod m` using modular exponentiation. It uses a binary exponentiation algorithm that iteratively squares `a` and reduces the exponent `b` by half until the exponent becomes zero.

The `modInverse` function computes the modular inverse of `a mod m` using the extended Euclidean algorithm. It first initializes some variables `m0`, `t`, `q`, `x0`, and `x1`, and then iteratively computes the remainders and quotients until the remainder becomes 1. It then returns the modular inverse `x1`.

The `elgamalEncrypt` function encrypts a given message using the ElGamal encryption scheme. It first chooses a random integer `k` between 1 and `p-2`. It then computes `B = g^k mod p` and `C = m * A^k mod p`, where `m` is the message to be encrypted and `A` is the public key. It then prints the encrypted message as a pair of integers `(B, C)`.

The `elgamalDecrypt` function decrypts a given message that has been encrypted using the ElGamal encryption scheme. It first computes `A = B^a mod p`, where `a` is the private key. It then computes `m = C * A^-a mod p`, where `C` is the second integer in the encrypted message. It then prints the decrypted message.

The `main` function starts by seeding the random number generator with the current time. It then chooses a random prime number `p` between 100 and 1000, a primitive root `g` of `p`, and a random integer `a` between 1 and `p-2`. It computes the public key `A = g^a mod p` and prints it along with `p`, `g`, and `a`. It then prompts the user to enter a message to be encrypted and calls the `elgamalEncrypt` function to encrypt the message. It then prompts the user to enter the encrypted message as a pair of integers `(B, C)` and calls the `elgamalDecrypt` function to decrypt the message.
*/