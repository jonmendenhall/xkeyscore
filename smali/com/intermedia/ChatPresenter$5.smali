.class Lcom/intermedia/ChatPresenter$5;
.super Lcom/intermedia/SimpleAnimatorListener;
.source "ChatPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/ChatPresenter;->showChatInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/ChatPresenter;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/intermedia/ChatPresenter;Z)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/intermedia/ChatPresenter$5;->this$0:Lcom/intermedia/ChatPresenter;

    iput-boolean p2, p0, Lcom/intermedia/ChatPresenter$5;->val$show:Z

    invoke-direct {p0}, Lcom/intermedia/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 289
    iget-boolean p1, p0, Lcom/intermedia/ChatPresenter$5;->val$show:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$5;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/intermedia/ChatPresenter$5;->this$0:Lcom/intermedia/ChatPresenter;

    invoke-static {v0}, Lcom/intermedia/ChatPresenter;->access$200(Lcom/intermedia/ChatPresenter;)Lcom/intermedia/ChatViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/ChatViewHost;->chatInput:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
