.class Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$1;
.super Ljava/lang/Object;
.source "RegisterEmailFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object p1, p1, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method
