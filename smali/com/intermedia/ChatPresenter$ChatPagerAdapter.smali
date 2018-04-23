.class Lcom/intermedia/ChatPresenter$ChatPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChatPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/ChatPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/ChatPresenter;


# direct methods
.method private constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/ChatPresenter;Lcom/intermedia/ChatPresenter$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;-><init>(Lcom/intermedia/ChatPresenter;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$600(Lcom/intermedia/ChatPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    .line 261
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 257
    :pswitch_0
    iget-object p2, p0, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p2}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object p2

    iget-object p2, p2, Lcom/intermedia/ChatViewHost;->chatContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/intermedia/ChatPresenter$ChatPagerAdapter;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {p1}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object p1

    iget-object p1, p1, Lcom/intermedia/ChatViewHost;->chatContainer:Landroid/view/ViewGroup;

    return-object p1

    :pswitch_1
    const p2, 0x7f0c0058

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 253
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
