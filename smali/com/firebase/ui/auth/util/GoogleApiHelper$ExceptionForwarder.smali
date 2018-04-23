.class public Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;
.super Ljava/lang/Object;
.source "GoogleApiHelper.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/util/GoogleApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExceptionForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private mSource:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;->mSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 88
    iput-object p2, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;->mListener:Lcom/google/android/gms/tasks/OnSuccessListener;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;->mListener:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/GoogleApiHelper$ExceptionForwarder;->mSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
