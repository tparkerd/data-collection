# Converts VADER lexicon to 0 to 5 rating

import argparse
import csv

class VaderConverter:

    def convert(self, OldValue):
        OldMin = -4
        OldMax = 4
        NewMin = 0
        NewMax = 5
        OldRange = (OldMax - OldMin)
        if (OldRange == 0):
            NewValue = NewMin
        else:
            NewRange = (NewMax - NewMin)
            NewValue = (((OldValue - OldMin) * NewRange) / OldRange) + NewMin
        return (5 - int(round(NewValue)))

    def main(self, output):
        results = []
        with open('vader_lexicon.txt') as inputFile:
            reader = csv.reader(inputFile, delimiter='\t')
            for row in reader:
                # 0 is token
                # 1 is mean sentiment
                # 2 is std. dev
                # 3 is annotations
                print(row[0], ' ', row[1])
                results.append( { 'token': row[0], 'rank': self.convert(float(row[1])) })

        with open(output, 'w') as csvfile:
            fieldnames = ['token', 'rank']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames, delimiter='\t')
            writer.writeheader()

            for r in results:
                writer.writerow(r)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Pulls down submissions from Reddit using PRAW')
    parser.add_argument('-o', metavar='output', dest='output', type=str, help='')
    args = parser.parse_args()
    VaderConverter().main(args.output)
