.class Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;
.super Ljava/lang/Object;
.source "CognitoCachingCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/IdentityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public identityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "CognitoCachingCredentialsProvider"

    const-string v0, "Identity id is changed"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-static {p1, p2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->access$000(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V

    return-void
.end method
