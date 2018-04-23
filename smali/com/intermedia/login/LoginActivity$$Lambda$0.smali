.class final synthetic Lcom/intermedia/login/LoginActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Lcom/intermedia/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/login/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/LoginActivity$$Lambda$0;->arg$1:Lcom/intermedia/login/LoginActivity;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$$Lambda$0;->arg$1:Lcom/intermedia/login/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/LoginActivity;->lambda$new$4$LoginActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
