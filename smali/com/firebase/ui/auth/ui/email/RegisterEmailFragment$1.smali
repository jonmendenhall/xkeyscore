.class Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;
.super Ljava/lang/Object;
.source "RegisterEmailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->safeRequestFocus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Landroid/view/View;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
