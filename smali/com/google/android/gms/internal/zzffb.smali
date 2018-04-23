.class public abstract Lcom/google/android/gms/internal/zzffb;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzpfq:Z = true


# instance fields
.field zzpfm:I

.field zzpfn:I

.field zzpfo:I

.field private zzpfp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/zzffb;->zzpfn:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzffb;->zzpfo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzffb;->zzpfp:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzffc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffb;-><init>()V

    return-void
.end method

.method static zzb([BIIZ)Lcom/google/android/gms/internal/zzffb;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzffd;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzffd;-><init>([BIIZLcom/google/android/gms/internal/zzffc;)V

    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/zzffb;->zzks(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzbb([B)Lcom/google/android/gms/internal/zzffb;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/google/android/gms/internal/zzffb;->zzb([BIIZ)Lcom/google/android/gms/internal/zzffb;

    move-result-object p0

    return-object p0
.end method

.method public static zzcs(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzg([BII)Lcom/google/android/gms/internal/zzffb;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzffb;->zzb([BIIZ)Lcom/google/android/gms/internal/zzffb;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzffb;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzffz;->EMPTY_BYTE_ARRAY:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/google/android/gms/internal/zzffb;->zzb([BIIZ)Lcom/google/android/gms/internal/zzffb;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzffe;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzffe;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/zzffc;)V

    return-object v0
.end method

.method public static zzkv(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzffu<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/zzffm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzfhf;Lcom/google/android/gms/internal/zzffm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvu()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvv()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvw()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvx()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvy()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcvz()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwa()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwb()Lcom/google/android/gms/internal/zzfes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwc()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwd()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwe()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwf()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwg()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwh()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwi()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzcwj()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwk()I
.end method

.method public abstract zzcwl()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzcwm()I
.end method

.method public abstract zzkp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation
.end method

.method public abstract zzkq(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzkr(I)I
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/zzffb;->zzpfo:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzffb;->zzpfo:I

    return p1
.end method

.method public abstract zzks(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation
.end method

.method public abstract zzkt(I)V
.end method

.method public abstract zzku(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
