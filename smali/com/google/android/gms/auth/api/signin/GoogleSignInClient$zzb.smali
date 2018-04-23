.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzehd:I = 0x1

.field public static final enum zzehe:I = 0x2

.field public static final enum zzehf:I = 0x3

.field public static final enum zzehg:I = 0x4

.field private static final synthetic zzehh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehd:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehe:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehf:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehg:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehh:[I

    return-void
.end method

.method public static values$50KLMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UPRDECNM2TBKD0NM2S395TPMIPRED5N2UHRFDTJMOPAJD5JMSIBE8DM6IPBEEGI4IRBGDHIMQPBEEHGN8QBFDOTG____0()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzb;->zzehh:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
