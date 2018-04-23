.class final synthetic Lcom/intermedia/user/AvatarUploader$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/user/AvatarUploader;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/io/File;

.field private final arg$5:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private final arg$6:Z

.field private final arg$7:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$1:Lcom/intermedia/user/AvatarUploader;

    iput-object p2, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$4:Ljava/io/File;

    iput-object p5, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$5:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    iput-boolean p6, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$6:Z

    iput-object p7, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$1:Lcom/intermedia/user/AvatarUploader;

    iget-object v1, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$4:Ljava/io/File;

    iget-object v4, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$5:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    iget-boolean v5, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$6:Z

    iget-object v6, p0, Lcom/intermedia/user/AvatarUploader$$Lambda$0;->arg$7:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lcom/intermedia/model/AWSS3Credentials;

    invoke-virtual/range {v0 .. v7}, Lcom/intermedia/user/AvatarUploader;->lambda$uploadAvatar$0$AvatarUploader(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;ZLjava/lang/String;Lcom/intermedia/model/AWSS3Credentials;)V

    return-void
.end method
