//
//  AppDelegate.m
//  StringsTest
//
//  Created by Андрей on 18.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    
/*
    NSString* string1 = @"String 1";
    NSString* string2 = @"String 2";
 
    NSArray* arrayOfStrings = [[NSArray alloc] initWithObjects:
                      string1,
                      string2,
                      nil];
    
    for (NSString* string in arrayOfStrings) {
        
        if ([string isEqualToString:@"String 1"]) {
            NSLog(@"index = %ld", [arrayOfStrings indexOfObject:string]);
        }
        
    }
*/
    
/*
    NSString* string = @"Hello World world!";
    
    NSLog(@"%@", string);
    
//    NSRange range = [string rangeOfString:@"World"];
    NSRange range = [string rangeOfString:@"World" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    
    if (range.location != NSNotFound) {
        NSLog(@"range = %@", NSStringFromRange(range));
    } else {
        NSLog(@"range not found");
    }
*/
    
    
    NSString* text = @"The NSString class declares the programmatic interface for an object that manages immutable strings. An immutable string is a text string that is defined when it is created and subsequently cannot be changed. NSString is implemented to represent an array of Unicode characters, in other words, a text string. The mutable subclass of NSString is NSMutableString. The NSString class has two primitive methods—length and characterAtIndex:—that provide the basis for all other methods in its interface. The length method returns the total number of Unicode characters in the string. characterAtIndex: gives access to each character in the string by index, with index values starting at 0. NSString declares methods for finding and comparing strings. It also declares methods for reading numeric values from strings, for combining strings in various ways, and for converting a string to different forms (such as encoding and case changes). The Application Kit also uses NSParagraphStyle and its subclass NSMutableParagraphStyle to encapsulate the paragraph or ruler attributes used by the NSAttributedString classes. Additionally, methods to support string drawing are described in NSString Additions, found in the Application Kit. NSString is “toll-free bridged” with its Core Foundation counterpart, CFStringRef. See “Toll-Free Bridging” for more information on toll-free bridging. String Objects NSString objects represent character strings in frameworks. Representing strings as objects allows you to use strings wherever you use other objects. It also provides the benefits of encapsulation, so that string objects can use whatever encoding and storage are needed for efficiency while simply appearing as arrays of characters. The cluster’s two public classes, NSString and NSMutableString, declare the programmatic interface for non-editable and editable strings, respectively. Note: An immutable string is a text string that is defined when it is created and subsequently cannot be changed. An immutable string is implemented as an array of Unicode characters (in other words, a text string). To create and manage an immutable string, use the NSString class. To construct and manage a string that can be changed after it has been created, use NSMutableString. The objects you create using NSString and NSMutableString are referred to as string objects (or, when no confusion will result, merely as strings). The term C string refers to the standard char * type. Because of the nature of class clusters, string objects aren’t actual instances of the NSString or NSMutableString classes but of one of their private subclasses. Although a string object’s class is private, its interface is public, as declared by these abstract superclasses, NSString and NSMutableString. The string classes adopt the NSCopying and NSMutableCopying protocols, making it convenient to convert a string of one type to the other. Understanding characters A string object presents itself as an array of Unicode characters (Unicode is a registered trademark of Unicode, Inc.). You can determine how many characters a string object contains with the length method and can retrieve a specific character with the characterAtIndex: method. These two “primitive” methods provide basic access to a string object. Most use of strings, however, is at a higher level, with the strings being treated as single entities: You compare strings against one another, search them for substrings, combine them into new strings, and so on. If you need to access string objects character by character, you must understand the Unicode character encoding, specifically issues related to composed character sequences. For details see The Unicode Standard, Version 4.0 (The Unicode Consortium, Boston: Addison-Wesley, 2003, ISBN 0-321-18578-1) and the Unicode Consortium web site: http://www.unicode.org/. See also “Characters and Grapheme Clusters” in String Programming Guide. Interpreting UTF-16-encoded data When creating an NSString object from a UTF-16-encoded string (or a byte stream interpreted as UTF-16), if the byte order is not otherwise specified, NSString assumes that the UTF-16 characters are big-endian, unless there is a BOM (byte-order mark), in which case the BOM dictates the byte order. When creating an NSString object from an array of Unicode characters, the returned string is always native-endian, since the array always contains Unicode characters in native byte order. Distributed objects Over distributed-object connections, mutable string objects are passed by-reference and immutable string objects are passed by-copy. Subclassing Notes It is possible to subclass NSString (and NSMutableString), but doing so requires providing storage facilities for the string (which is not inherited by subclasses) and implementing two primitive methods. The abstract NSString and NSMutableString classes are the public interface of a class cluster consisting mostly of private, concrete classes that create and return a string object appropriate for a given situation. Making your own concrete subclass of this cluster imposes certain requirements (discussed in “Methods to Override”). Make sure your reasons for subclassing NSString are valid. Instances of your subclass should represent a string and not something else. Thus the only attributes the subclass should have are the length of the character buffer it’s managing and access to individual characters in the buffer. Valid reasons for making a subclass of NSString include providing a different backing store (perhaps for better performance) or implementing some aspect of object behavior differently, such as memory management. If your purpose is to add non-essential attributes or metadata to your subclass of NSString, a better alternative would be object composition (see “Alternatives to Subclassing”). Cocoa already provides an example of this with the NSAttributedString class. Any subclass of NSString must override the primitive instance methods length and characterAtIndex:. These methods must operate on the backing store that you provide for the characters of the string. For this backing store you can use a static array, a dynamically allocated buffer, a standard NSString object, or some other data type or mechanism. You may also choose to override, partially or fully, any other NSString method for which you want to provide an alternative implementation. For example, for better performance it is recommended that you override getCharacters:range: and give it a faster implementation. You might want to implement an initializer for your subclass that is suited to the backing store that the subclass is managing. The NSString class does not have a designated initializer, so your initializer need only invoke the init method of super. The NSString class adopts the NSCopying, NSMutableCopying, and NSCoding protocols; if you want instances of your own custom subclass created from copying or coding, override the methods in these protocols. Note that you shouldn’t override the hash method. Alternatives to Subclassing Often a better and easier alternative to making a subclass of NSString—or of any other abstract, public class of a class cluster, for that matter—is object composition. This is especially the case when your intent is to add to the subclass metadata or some other attribute that is not essential to a string object. In object composition, you would have an NSString object as one instance variable of your custom class (typically a subclass of NSObject) and one or more instance variables that store the metadata that you want for the custom object. Then just design your subclass interface to include accessor methods for the embedded string object and the metadata. If the behavior you want to add supplements that of the existing class, you could write a category on NSString. Keep in mind, however, that this category will be in effect for all instances of NSString that you use, and this might have unintended consequences.";
    
//    text = [text substringWithRange:NSMakeRange(4,8)];
/*
    NSRange range = [text rangeOfString:@"the application kit also use1s" options:NSCaseInsensitiveSearch];
    
    if (range.location != NSNotFound) {
        
        text = [text substringToIndex:range.location];
        
    } else {
        
        NSLog(@"range not found");
        
    }
*/

/*
    NSRange searchRange = NSMakeRange(0, text.length);
    NSInteger counter = 0;
    
    while (YES) {
        
        NSRange range = [text rangeOfString:@"nsstring" options:NSCaseInsensitiveSearch range:searchRange];
        
        if (range.location != NSNotFound) {
            
            NSInteger index = range.location + range.length;
            searchRange.location = index;
            searchRange.length = (NSInteger)[text length] - index;
            
            NSLog(@"%@", NSStringFromRange(range));
            
            counter++;
            
        } else {
            break;
        }
        
    }
    
    
//    NSLog(@"%@", text);
    
    NSLog(@"Counter = %ld", counter);
*/
    
   
    
//    text = [text stringByReplacingOccurrencesOfString:@"NSString" withString:@"Tra-la-la"];
  
//    text = [text uppercaseString];
//    text = [text lowercaseString];
//    text = [text capitalizedString];

    
//    NSLog(@"%ld", [@"512" intValue]);
    
//    NSLog(@"%@", text);
    
/*
    text = [text stringByReplacingOccurrencesOfString:@"." withString:@" "];
    text = [text stringByReplacingOccurrencesOfString:@"," withString:@" "];
    
    NSArray* array = [text componentsSeparatedByString:@" "];
    
    text = [array componentsJoinedByString:@"_"];
    
    NSLog(@"%@", text);
*/
    
    
  
    NSString* s1 = @"Hello ";
    NSString* s2 = @"World!";
    
    NSString* s3 = [s1 stringByAppendingString:s2];
    
    NSLog(@"%@", s3);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
