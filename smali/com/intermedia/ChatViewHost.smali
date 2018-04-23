.class public final Lcom/intermedia/ChatViewHost;
.super Ljava/lang/Object;
.source "ChatViewHost.java"


# instance fields
.field public final chatContainer:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public chatCountButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0061
    .end annotation
.end field

.field public chatEditText:Lcom/intermedia/view/CustomEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0062
    .end annotation
.end field

.field public chatFab:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0063
    .end annotation
.end field

.field public chatInput:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0064
    .end annotation
.end field

.field public chatListBackground:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0066
    .end annotation
.end field

.field public final chatOverlay:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public chatRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0065
    .end annotation
.end field

.field public final viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 35
    iput-object p2, p0, Lcom/intermedia/ChatViewHost;->chatContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0a0068

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/intermedia/ChatViewHost;->chatOverlay:Landroid/view/View;

    const p2, 0x7f0a006a

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/intermedia/ChatViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 39
    iget-object p1, p0, Lcom/intermedia/ChatViewHost;->chatEditText:Lcom/intermedia/view/CustomEditText;

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Lcom/intermedia/view/CustomEditText;->setInputType(I)V

    return-void
.end method
