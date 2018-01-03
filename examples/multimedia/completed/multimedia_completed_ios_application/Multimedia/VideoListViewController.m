#import "VideoListViewController.h"
#import "VideoViewerViewController.h"

@interface VideoListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *videosListView;
@property (strong, nonatomic) NSArray *videosListViewContents;

@end

@implementation VideoListViewController
-(NSArray *)videosListViewContents {
        _videosListViewContents = [self filesAtPath:[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingString:@"/videos"]];
    return _videosListViewContents;
}

-(NSArray*)filesAtPath:(NSString *)path
{
    NSDirectoryEnumerator* directory = [[NSFileManager defaultManager] enumeratorAtURL:[NSURL URLWithString:path] includingPropertiesForKeys:nil options:0 errorHandler:NULL];
    NSMutableArray* files = [[NSMutableArray alloc] init];
    for (NSURL *url in directory) {
        NSString* filename = [[url absoluteString] lastPathComponent];
        [files addObject:filename];
    }
    return files;
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	
	
	
	
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.videosListView reloadData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (tableView == self.videosListView) {
        return self.videosListViewContents.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    if (tableView == self.videosListView) {
        cell.textLabel.text = [self.videosListViewContents objectAtIndex:indexPath.row];
    }
	return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.videosListView) {
        NSString *clickedItem = [self.videosListViewContents objectAtIndex:indexPath.row];
       	VideoViewerViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"VideoViewerViewController"];
       	// Navigation logic may go here: configure properties of VideoViewerViewController
        vc.filename= clickedItem;
       	[[self navigationController] pushViewController:vc animated:YES];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}






- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	// Auto-generated method stub
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	// Auto-generated method stub
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	// Auto-generated method stub
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{}

@end
