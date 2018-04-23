.class final Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazonaws/event/ProgressListener;

.field final synthetic val$progressEvent:Lcom/amazonaws/event/ProgressEvent;


# direct methods
.method constructor <init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/amazonaws/event/ProgressListener;

    iput-object p2, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/amazonaws/event/ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/amazonaws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/event/ProgressListener;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method
