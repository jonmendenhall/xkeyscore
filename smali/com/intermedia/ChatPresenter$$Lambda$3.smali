.class final synthetic Lcom/intermedia/ChatPresenter$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final arg$1:Lcom/intermedia/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/ChatPresenter$$Lambda$3;->arg$1:Lcom/intermedia/ChatPresenter;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/intermedia/ChatPresenter$$Lambda$3;->arg$1:Lcom/intermedia/ChatPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/intermedia/ChatPresenter;->lambda$startChatting$3$ChatPresenter(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
