.class public final Lcom/google/android/gms/internal/zzelc;
.super Ljava/lang/Object;


# instance fields
.field private zznel:[B

.field private zznem:Ljava/lang/String;

.field private zznen:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelc;->zznem:Ljava/lang/String;

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/zzelc;->zznen:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelc;->zznel:[B

    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/google/android/gms/internal/zzelc;->zznen:B

    return-void
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelc;->zznem:Ljava/lang/String;

    return-object v0
.end method
