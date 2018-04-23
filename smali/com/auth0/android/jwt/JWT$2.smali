.class Lcom/auth0/android/jwt/JWT$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "JWT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/jwt/JWT;->decode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auth0/android/jwt/JWT;


# direct methods
.method constructor <init>(Lcom/auth0/android/jwt/JWT;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/auth0/android/jwt/JWT$2;->this$0:Lcom/auth0/android/jwt/JWT;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
