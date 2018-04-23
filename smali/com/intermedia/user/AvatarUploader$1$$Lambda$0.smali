.class final synthetic Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/user/AvatarUploader$1;

.field private final arg$2:Z

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/user/AvatarUploader$1;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$1:Lcom/intermedia/user/AvatarUploader$1;

    iput-boolean p2, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$2:Z

    iput-object p3, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$1:Lcom/intermedia/user/AvatarUploader$1;

    iget-boolean v1, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$2:Z

    iget-object v2, p0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;->arg$3:Ljava/lang/String;

    check-cast p1, Lcom/intermedia/model/Avatar;

    invoke-virtual {v0, v1, v2, p1}, Lcom/intermedia/user/AvatarUploader$1;->lambda$onStateChanged$0$AvatarUploader$1(ZLjava/lang/String;Lcom/intermedia/model/Avatar;)V

    return-void
.end method
