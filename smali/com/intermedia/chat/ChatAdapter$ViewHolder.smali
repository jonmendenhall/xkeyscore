.class Lcom/intermedia/chat/ChatAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/chat/ChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field avatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a005f
    .end annotation
.end field

.field hqTurquoiseColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06008a
    .end annotation
.end field

.field messageTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0067
    .end annotation
.end field

.field spamAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0069
    .end annotation
.end field

.field textChatUsernameColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f0600b6
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/chat/ChatAdapter;

.field whiteColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f0600bd
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/chat/ChatAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/intermedia/chat/ChatAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 145
    iput-object p1, p0, Lcom/intermedia/chat/ChatAdapter$ViewHolder;->this$0:Lcom/intermedia/chat/ChatAdapter;

    .line 146
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
