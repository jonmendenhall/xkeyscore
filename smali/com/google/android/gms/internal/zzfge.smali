.class public Lcom/google/android/gms/internal/zzfge;
.super Ljava/io/IOException;


# instance fields
.field private zzphw:Lcom/google/android/gms/internal/zzfhe;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfge;->zzphw:Lcom/google/android/gms/internal/zzfhe;

    return-void
.end method

.method static zzcya()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyb()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyc()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyd()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcye()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyf()Lcom/google/android/gms/internal/zzfgf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfgf;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfgf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyg()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyh()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzcyi()Lcom/google/android/gms/internal/zzfge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfge;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfge;->zzphw:Lcom/google/android/gms/internal/zzfhe;

    return-object p0
.end method
