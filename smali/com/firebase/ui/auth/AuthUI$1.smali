.class Lcom/firebase/ui/auth/AuthUI$1;
.super Ljava/lang/Object;
.source "AuthUI.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/AuthUI;->delete(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/AuthUI;

.field final synthetic val$client:Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

.field final synthetic val$credentials:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/AuthUI;Ljava/util/List;Lcom/google/android/gms/auth/api/credentials/CredentialsClient;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$1;->this$0:Lcom/firebase/ui/auth/AuthUI;

    iput-object p2, p0, Lcom/firebase/ui/auth/AuthUI$1;->val$credentials:Ljava/util/List;

    iput-object p3, p0, Lcom/firebase/ui/auth/AuthUI$1;->val$client:Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$1;->val$credentials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 257
    iget-object v2, p0, Lcom/firebase/ui/auth/AuthUI$1;->val$client:Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->delete(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/AuthUI$1$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/AuthUI$1$1;-><init>(Lcom/firebase/ui/auth/AuthUI$1;)V

    .line 260
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/AuthUI$1;->then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
