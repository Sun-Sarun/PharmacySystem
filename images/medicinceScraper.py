import os
from icrawler.builtin import BingImageCrawler
import logging

# 1. Setup Folder
IMAGE_DIR = "medicine_packages"
if not os.path.exists(IMAGE_DIR):
    os.makedirs(IMAGE_DIR)

# Mute the logs so the terminal is clean
logging.getLogger('icrawler').setLevel(logging.CRITICAL)

# Medicines with "Packaging" keywords for retail boxes
medicines = {
    "panadol_extra": "Panadol Extra red box retail packaging",
    "amoxicillin": "Amoxicillin 500mg capsules medicine box packaging",
    "claritin": "Claritin 10mg allergy tablets box",
    "gaviscon": "Gaviscon Liquid antacid bottle box",
    "centrum": "Centrum Silver multivitamins bottle box",
    "metformin": "Metformin 850mg tablets medicine box",
    "lipitor": "Lipitor 20mg Pfizer medicine box",
    "ventolin": "Ventolin Inhaler GSK box packaging",
    "voltaren": "Voltaren Gel tube box",
    "tamiflu": "Tamiflu 75mg capsules box"
}

def download_with_bing():
    print(f"--- Pharmacy System: Fetching Real Product Boxes ---")
    
    for filename, search_query in medicines.items():
        print(f"Searching Bing for: {search_query}...", end=" ", flush=True)
        
        # We use BingImageCrawler because it is less likely to block you than Google
        bing_crawler = BingImageCrawler(storage={'root_dir': IMAGE_DIR})
        
        # We only need the top 1 result
        bing_crawler.crawl(keyword=search_query, max_num=1)
        
        # Bing saves as 000001.jpg, rename to match our database name
        old_file = os.path.join(IMAGE_DIR, "000001.jpg")
        new_file = os.path.join(IMAGE_DIR, f"{filename}.jpg")
        
        if os.path.exists(old_file):
            if os.path.exists(new_file):
                os.remove(new_file)
            os.rename(old_file, new_file)
            print("Done!")
        else:
            print("Failed (No image found)")

if __name__ == "__main__":
    download_with_bing()
    print(f"\nSuccess! Check the '{IMAGE_DIR}' folder.")
    print("Files found:", os.listdir(IMAGE_DIR))