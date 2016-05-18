//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamPreference = @ { @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" : @"Natural Vanilla", @"Sophie" : @"Mexican Chocolate", @"Deniz" : @"Natural Vanilla", @"Tom" : @"Mexican Chocolate", @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream" };
    
    NSArray *weLikeIceCream = @[];

    for (NSString *likes in iceCreamPreference) {
                if([iceCream isEqualToString:iceCreamPreference[likes]]) {
           weLikeIceCream =  [weLikeIceCream arrayByAddingObject:likes];
        }
    
    }return weLikeIceCream;
    
}



-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
   NSMutableDictionary *iceCreamCount = [[NSMutableDictionary alloc]init];
    //First create mutable dictionary because this is the dictionary that I will be returning at the end of this method
    
    for (NSString *key in iceCreamByName) {
        //Then I will be iterating of the dictionary given as an arguement
       
        NSString* iceCreamFlavors = iceCreamByName[key];
        //Give me the values that correspond with the names. (ONLY FLAVORS)
        
        NSArray* names =  [self namesForIceCream:iceCreamFlavors];
        //Call on previous method to get the names to count for the type of ice cream. Reversing the dictionary.
        
        NSNumber* peopleLikeFlavor = @([names count]);
        //Gives me the count of how many people like what flavor and convert it into an object because primitives cant go in ditionaries.
        
        iceCreamCount[iceCreamFlavors] = peopleLikeFlavor;
    }
    
    return iceCreamCount;
    }
    
    

@end
