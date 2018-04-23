.class public Lcom/firebase/ui/auth/ui/TaskFailureLogger;
.super Ljava/lang/Object;
.source "TaskFailureLogger.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;->mTag:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;->mMessage:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
