.class final synthetic Lcom/intermedia/user/AvatarUploader$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/user/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/intermedia/user/AvatarUploader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$1;->arg$1:Lcom/intermedia/user/AvatarUploader;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$1;->arg$1:Lcom/intermedia/user/AvatarUploader;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/intermedia/user/AvatarUploader;->lambda$uploadAvatar$1$AvatarUploader(Ljava/lang/Throwable;)V

    return-void
.end method
