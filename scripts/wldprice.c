#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>

// Buffer to store API response
static char response[1024];

// Callback function to write the API response into the buffer
static size_t write_callback(void *ptr, size_t size, size_t nmemb, void *userdata) {
    size_t total_size = size * nmemb;
    strncat(response, (char *)ptr, total_size);
    return total_size;
}

int main() {
    CURL *curl;
    CURLcode res;

    // API endpoint URL
    const char *url = "https://api.binance.com/api/v1/ticker/price?symbol=WLDUSDT";

    // Initialize CURL
    curl = curl_easy_init();
    if (!curl) {
        fprintf(stderr, "Failed to initialize CURL.\n");
        return 1;
    }

    // Set CURL options
    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, NULL);

    // Perform the API request
    res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        fprintf(stderr, "CURL request failed: %s\n", curl_easy_strerror(res));
        curl_easy_cleanup(curl);
        return 1;
    }

    // Cleanup CURL
    curl_easy_cleanup(curl);

    // Parse the JSON response
    char *price_start = strstr(response, "\"price\":\"");
    if (price_start) {
        price_start += 9; // Move pointer past `"price":"`
        char *price_end = strchr(price_start, '"');
        if (price_end) {
            *price_end = '\0'; // Null-terminate the price string
            double price = atof(price_start);
            printf("%.4f\n", price); // Print the price rounded to 4 decimal places
        } else {
            fprintf(stderr, "Failed to parse price from response.\n");
        }
    } else {
        fprintf(stderr, "Invalid API response.\n");
    }

    return 0;
}

