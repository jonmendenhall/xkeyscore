.class public Lcom/intermedia/chat/ChatAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/chat/ChatAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/intermedia/chat/ChatAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CHAT_SCROLL_BACK:I = 0xfa

.field private static final MESSAGE_ADD_PERIOD_MS:J = 0xfaL


# instance fields
.field private chatIsVisible:Z

.field private final chatMessageQueue:Ljava/util/LinkedList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/intermedia/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final chatMessages:Ljava/util/LinkedList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/intermedia/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

.field private final picasso:Lcom/squareup/picasso/Picasso;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->handler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessageQueue:Ljava/util/LinkedList;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessages:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatIsVisible:Z

    .line 43
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/ApplicationComponent;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 47
    new-instance v0, Lcom/intermedia/chat/ChatAdapter$1;

    invoke-direct {v0, p0}, Lcom/intermedia/chat/ChatAdapter$1;-><init>(Lcom/intermedia/chat/ChatAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/intermedia/chat/ChatAdapter;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/chat/ChatAdapter;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intermedia/chat/ChatAdapter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessageQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessages:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/chat/ChatAdapter;)Lcom/intermedia/function/NoArgCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/intermedia/chat/ChatAdapter;->itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

    return-object p0
.end method


# virtual methods
.method public addMessage(Lcom/intermedia/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/ChatMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchAvatarImages(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/intermedia/chat/ChatAdapter;->chatIsVisible:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/ChatMessage;

    invoke-virtual {p1}, Lcom/intermedia/model/ChatMessage;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    check-cast p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/intermedia/chat/ChatAdapter;->onBindViewHolder(Lcom/intermedia/chat/ChatAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/intermedia/chat/ChatAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # Lcom/intermedia/chat/ChatAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/model/ChatMessage;

    .line 76
    instance-of v0, p2, Lcom/intermedia/model/SpamChatMessage;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/intermedia/model/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p2, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    iget v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->hqTurquoiseColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->spamAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/intermedia/model/ChatMessage;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p2}, Lcom/intermedia/model/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->textChatUsernameColor:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 87
    invoke-virtual {v4, v5, v2, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 89
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->whiteColor:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 90
    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 92
    iget-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->spamAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    invoke-virtual {p2}, Lcom/intermedia/model/ChatMessage;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/intermedia/chat/ChatAdapter;->chatIsVisible:Z

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p2}, Lcom/intermedia/model/ChatMessage;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 97
    iget-object p1, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/chat/ChatAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/intermedia/chat/ChatAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    new-instance p2, Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002e

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/intermedia/chat/ChatAdapter$ViewHolder;-><init>(Lcom/intermedia/chat/ChatAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    check-cast p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/intermedia/chat/ChatAdapter;->onViewRecycled(Lcom/intermedia/chat/ChatAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/intermedia/chat/ChatAdapter$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/intermedia/chat/ChatAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object p1, p1, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 126
    iput-object v1, p0, Lcom/intermedia/chat/ChatAdapter;->itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

    return-void
.end method

.method public setItemAddedCallback(Lcom/intermedia/function/NoArgCallback;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/intermedia/chat/ChatAdapter;->itemAddedCallback:Lcom/intermedia/function/NoArgCallback;

    return-void
.end method
